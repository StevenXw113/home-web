module example.com/cmdb-test-app

go 1.23

// client_golang 是唯一的依赖：/metrics 要有东西可暴露，而平台的告警基线与容量
// 建议都读这个端点（§4.5）。没有指标的应用在平台上是「活着但看不见」。
require github.com/prometheus/client_golang v1.20.5
