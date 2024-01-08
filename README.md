# Icon library for systray

## generate PNG from 
https://iconpark.oceanengine.com/official


## examples

### Dynamic icon in systray
```go
package main

import (
	"time"

	"github.com/getlantern/systray"
	icon "github.com/linexjlin/systray-icons/dynamic/ball-triangle"
	keyboardIcon "github.com/linexjlin/systray-icons/enter-the-keyboard"
)

func main() {
	systray.Run(onReady, nil)
}

func dynamicicon() {
	i := 0
	for {
		systray.SetIcon(icon.Datas[i])
		time.Sleep(time.Millisecond * 120)
		i = i + 1
		if i > len(icon.Datas)-2 {
			i = 0
		}
	}
}

func onReady() {
	systray.SetIcon(keyboardIcon.Data)
	go dynamicicon()
	systray.SetTitle("Awesome App")
	systray.SetTooltip("Pretty awesome超级棒")
}
```
