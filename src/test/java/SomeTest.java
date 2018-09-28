import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;
import org.apache.commons.lang3.reflect.FieldUtils;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objenesis.Objenesis;
import org.objenesis.ObjenesisStd;
import org.objenesis.instantiator.ObjectInstantiator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sun.misc.ProxyGenerator;
import sun.misc.Unsafe;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.*;
import java.util.concurrent.Executors;

public class SomeTest extends BaseTest {

    private static final Logger L = LoggerFactory.getLogger("SomeTest");

    private int i = 0;

    private String name;

    public SomeTest(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public static void main(String[] args) throws Exception {
        Objenesis objenesis = new ObjenesisStd();
        ObjectInstantiator<SomeTest> i = objenesis.getInstantiatorOf(SomeTest.class);
        L.info("Before");
        SomeTest test = i.newInstance();
        L.info(test.getName());

        Field unsafeField = FieldUtils.getDeclaredField(Unsafe.class, "theUnsafe", true);
        unsafeField.setAccessible(true);
        Unsafe unsafe = (Unsafe) unsafeField.get(null);
        Field fieldI = SomeTest.class.getDeclaredField("i");
        long offset = unsafe.objectFieldOffset(fieldI);
        L.info("static base L: " + unsafe.staticFieldOffset(SomeTest.class.getDeclaredField("L")));
        L.info("offset L: " + unsafe.staticFieldOffset(SomeTest.class.getDeclaredField("L")));
        L.info("offset i: " + offset);
        L.info("offset name: " + unsafe.objectFieldOffset(SomeTest.class.getDeclaredField("name")));
        Runnable r = () -> {
            for (int j = 0; j < 100000; j++) {
                unsafe.getAndAddInt(test, offset, 1);
            }
        };
        Thread t1 = new Thread(r);
        Thread t2 = new Thread(r);
        t1.start();
        t2.start();

        t1.join();
        t2.join();

        L.info("" + test.i);

        SomeTest test1 = (SomeTest) unsafe.allocateInstance(SomeTest.class);
        L.info(test1.getName());

        print(unsafe.addressSize());
        print(unsafe.arrayBaseOffset(int[].class));
        print(unsafe.arrayIndexScale(Object[].class));

        String s = "Just some String";

        ClassIntrospector introspector = new ClassIntrospector();
        ObjectInfo info = introspector.introspect(s);
        print(info.toString());
        print(info.getDeepSize());

        BitSet bitSet = new BitSet(7);
        bitSet.set(0);
        bitSet.set(6);
        print(bitSet.toString());
    }

}
