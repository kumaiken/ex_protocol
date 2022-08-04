# csvファイルの読み込み
nirs1 <- read_HOT_data("/Users/kumaiken/Desktop/仕事/企業/Neu/20220804
                      /Archive/HOTLog_20211005_104849.csv", include.hdr = T)

# Hb信号の可視化
viz_plotly_HOTlog(nirs1$data)

#刺激提示タイミングの可視化
stim <- hot_extract_Mark(nirs1$data)

#加速度、ジャイロの可視化
plot_hot_IMU(nirs1$data, Mark.show = T)

## 以上で1名分が終了(nirs1)、これを26名分繰り返す(nirs26まで) ##