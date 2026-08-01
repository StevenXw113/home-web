module example.com/cmdb-test-app

go 1.23

// client_golang 是唯一的依赖：/metrics 要有东西可暴露，而平台的告警基线与容量
// 建议都读这个端点（§4.5）。没有指标的应用在平台上是「活着但看不见」。
require github.com/prometheus/client_golang v1.20.5

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/klauspost/compress v1.17.9 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/prometheus/client_model v0.6.1 // indirect
	github.com/prometheus/common v0.55.0 // indirect
	github.com/prometheus/procfs v0.15.1 // indirect
	golang.org/x/sys v0.22.0 // indirect
	google.golang.org/protobuf v1.34.2 // indirect
)
