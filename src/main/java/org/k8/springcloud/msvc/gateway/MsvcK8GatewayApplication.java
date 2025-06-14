package org.k8.springcloud.msvc.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class MsvcK8GatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsvcK8GatewayApplication.class, args);
	}

}
