{
  global: {
  },
  components: {
    grafana: {
      containerPort: 3000,
      image: 'grafana/grafana',
      name: 'grafana',
      replicas: 0,
      servicePort: 80,
      nodePort: 31003,
      type: 'NodePort',
    },
    statspitter: {
      containerPort: 8090,
      image: 'ss',
      name: 'statspitter',
      replicas: 1,
      servicePort: 80,
      nodePort: 31001,
      type: 'NodePort',
    },
    'bomb-squad': {
      containerPort: 8080,
      image: 'bomb-squad',
      imageTag: 'latest',
      name: 'bomb-squad',
      replicas: 1,
      servicePort: 80,
      nodePort: 31002,
      type: 'NodePort',
    },
    prometheus: {
      name: 'prometheus',
      replicas: 1,
      promImage: 'prom/prometheus:v2.2.1',
      prometheusServicePort: 9090,
      prometheusTargetPort: 9090,
      prometheusNodePort: 30090,
    },
  },
}
