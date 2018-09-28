package config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * @author jony
 * Configuration
 */
@Configuration
@ComponentScan(basePackages = {"bean"})
public class SpringContext {

}
