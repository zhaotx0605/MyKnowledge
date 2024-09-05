在阅读 Spring Core 模块代码时，最核心、最常用的类主要集中在以下几个包中，这些类提供了 IoC 容器的实现、依赖注入、事件机制、资源管理等核心功能。以下是一些常见的包和类，以及它们的功能说明：

### 1. **`org.springframework.beans`**
   这个包包含 Spring 的依赖注入机制相关的类和接口，是实现 IoC 容器的基础。

   - **`BeanFactory`**：IoC 容器的基础接口，定义了获取 Bean 的方法。
   - **`ConfigurableBeanFactory`**：`BeanFactory` 的扩展接口，提供了配置 Bean 的方法，如设置 Bean 的作用域、自动装配等。
   - **`BeanWrapper`**：包装 Bean 的接口，提供了对 Bean 属性的读写操作。
   - **`BeanDefinition`**：Bean 的配置接口，描述了 Spring 容器中 Bean 的定义，包括 Bean 的类、作用范围、构造函数等。
   - **`PropertyEditor`**：用于在 Spring 中将属性值从一种格式转换为另一种格式，常见于依赖注入时。

### 2. **`org.springframework.context`**
   这个包包含 `ApplicationContext` 和 Spring 事件机制的实现。

   - **`ApplicationContext`**：Spring 的高级 IoC 容器接口，继承自 `BeanFactory`，并提供更多的功能，如国际化、事件传播和 Bean 自动装配。
   - **`ConfigurableApplicationContext`**：`ApplicationContext` 的扩展接口，允许对容器进行配置和刷新。
   - **`AbstractApplicationContext`**：`ApplicationContext` 的抽象实现类，实现了基本的上下文启动、停止和关闭的功能。
   - **`ApplicationEvent`**：Spring 的事件类，所有自定义事件都需要继承自这个类。
   - **`ApplicationListener`**：Spring 事件监听器接口，用户可以实现这个接口来处理某个事件。

### 3. **`org.springframework.core`**
   这个包提供了一些 Spring 框架中的基础支持类和工具类。

   - **`Environment`**：提供对当前运行环境的访问，例如系统属性、环境变量等。
   - **`Resource`**：用于统一访问各种资源（如文件、URL、类路径资源等）。
   - **`SimpleAliasRegistry`**：一个简单的别名注册表，允许为 Bean 名称注册别名。
   - **`ParameterNameDiscoverer`**：用于发现方法参数名称的接口，通常用于自动注入参数。
   - **`Ordered`**：用于定义类执行顺序的接口，在 AOP 和事件处理中非常常见。

### 4. **`org.springframework.util`**
   这个包提供了一些通用的工具类，这些工具类在整个 Spring 框架中被广泛使用。

   - **`ClassUtils`**：提供与类加载、类路径等相关的工具方法。
   - **`StringUtils`**：提供字符串处理的工具方法，如字符串的分割、拼接、空值检查等。
   - **`ReflectionUtils`**：提供反射相关的工具方法，用于操作类的方法、字段和构造函数。
   - **`CollectionUtils`**：提供集合处理的工具方法，如对集合进行过滤、查找等。

### 5. **`org.springframework.beans.factory`**
   这个包包含与 Bean 工厂（`BeanFactory`）相关的类和接口，负责管理 Spring 容器中的 Bean 实例。

   - **`DefaultListableBeanFactory`**：`BeanFactory` 的默认实现类，负责管理 Bean 的创建、注入和生命周期管理。
   - **`AutowireCapableBeanFactory`**：支持自动装配的 `BeanFactory`，提供了对 Bean 进行自动装配的功能。
   - **`FactoryBean`**：允许用户自定义 Bean 创建逻辑的接口，可以通过实现该接口来创建更复杂的 Bean 实例。

### 6. **`org.springframework.context.support`**
   这个包包含一些常用的 `ApplicationContext` 实现类和支持类。

   - **`ClassPathXmlApplicationContext`**：从类路径下加载 XML 配置文件的 `ApplicationContext` 实现。
   - **`FileSystemXmlApplicationContext`**：从文件系统中加载 XML 配置文件的 `ApplicationContext` 实现。
   - **`AbstractRefreshableApplicationContext`**：一个可刷新的 `ApplicationContext` 实现类，它实现了 `refresh()` 方法，用于刷新上下文。

### 7. **`org.springframework.core.env`**
   这个包包含环境抽象的支持类，允许访问和管理配置属性。

   - **`StandardEnvironment`**：`Environment` 的标准实现，通常用于管理系统属性和环境变量。
   - **`PropertySource`**：表示一个属性源，Spring 可以从多个属性源中获取配置属性（如环境变量、配置文件等）。

### 8. **`org.springframework.aop`**
   虽然 AOP 是 Spring Core 的扩展模块，但它也是 Spring 框架的核心功能之一，包含面向切面编程（AOP）的实现。

   - **`Pointcut`**：定义了切点，即在哪些位置应用通知（advice）。
   - **`Advisor`**：切面的核心接口，封装了切点和通知。
   - **`MethodBeforeAdvice`**：用于方法执行之前的前置通知接口。
   - **`AfterReturningAdvice`**：用于方法执行后的后置通知接口。

### 9. **`org.springframework.expression`**
   这个包提供了 Spring 表达式语言（SpEL）的支持，SpEL 用于在运行时动态解析表达式。

   - **`ExpressionParser`**：用于解析 SpEL 表达式的接口。
   - **`StandardEvaluationContext`**：用于在解析 SpEL 表达式时保存上下文的类。

### 核心类总结

- **`ApplicationContext`**：Spring IoC 容器的高级接口，提供了全面的容器功能。
- **`BeanFactory`**：Spring 容器的基础接口，提供 Bean 管理的基本功能。
- **`DefaultListableBeanFactory`**：`BeanFactory` 的默认实现，负责 Bean 的依赖注入和管理。
- **`BeanDefinition`**：描述 Bean 的定义，包括其类、作用域、依赖等信息。
- **`Environment`**：提供对系统环境和配置属性的访问。
- **`Resource`**：用于统一访问文件、URL 等资源的接口。

通过仔细阅读这些核心类的源码，可以深入理解 Spring Core 的工作原理和设计模式，尤其是 IoC 和 DI 的实现。