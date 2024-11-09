*start

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage=""Z:\github\tyrano_sample\docs\data\bgimage\start.png""]

[title name="鉄系超伝導"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

[bg storage=Yagami.jpg time=500]

;メッセージレイヤの位置とサイズを変更
[position width=800 height=300 top=400 left=250]
;メッセージレイヤの色と透明度を変更
[position color=blue opacity=100]

鉄系超伝導体を発見しよう！[l][r]


[link target=*tag_period] →作って、測る [endlink][r]
[link target=*tag_book] →書斎にこもる [endlink][r]

[s]

*tag_period

[cm]

指導教官「お名前をお聞きしてもいいでしょうか。」[l][r]

[edit name="f.test" top=500 left=260]

[locate x=500 y=500]
[button graphic="/image/config/arrow_next.png" target=*commit]

[s]

*commit
[commit name="f.test"]
[cm]
;入力されたテキストの内容を表示する
「[emb exp=f.test]さまですか。現代風なお名前ですね。」[l][r]
「一緒に新しい超伝導体を発見しましょう！」[l][r]

[link target=*tag_yes] →はい。 [endlink][r]
[link target=*tag_book] →嫌です。 [endlink][r]

[s]

*tag_yes
[bg storage=meeting.JPG time=500]
[cm]
「まずは超伝導について勉強しましょう。」[l][r]
「超伝導は1911年にKammerlingh Onnesさんによって発見されました。」[l][r]
「このときにOnnesが用いた物質が何か知っていますか？」[l][r]

[cm]

[link target=*tag_correct] →水銀 [endlink][r]
[link target=*tag_wrong] →鉛 [endlink][r]
[link target=*tag_wrong] →鉄 [endlink][r]
[link target=*tag_wrong] →金 [endlink][r]

[s]

*tag_correct
[cm]
「正解です！」[l][r]
「いや～ね。[emb exp=f.test]さま、博識ですね。」[l][r]

[jump storgage=first.ks target=*quiz2]

[s]



*tag_wrong
[bg storage=meeting.jpg time=500]
[cm]
「不正解です。」[l][r]
「正解は水銀です。」[l][r]

[jump storage=first.ks target=*quiz2]

[s]

*quiz2
[cm]
「Onnesさんは水銀の電気抵抗が4.2 K付近で急激に消失することを発見しました。」[l][r]
「これが超伝導研究の始まりです。」[l][r]
「では、超伝導と言われて何を思い浮かべますか？」[l][r]
[link target=*tag_quiz2doutai] →完全導電性ですかね。 [endlink][r]
[link target=*tag_quiz2hanjisei] →完全反磁性ですかね。 [endlink][r]

[s]

*tag_quiz2doutai
[cm]
「よく知られているのはそちらですね。」[l][r]
「完全導電性も間違いではないのですが、不十分です。」[l][r]
「完全反磁性こそが魅力的な現象なのです。」[l][r]
[jump storage=first.ks target=*jisoku]

[s]

*tag_quiz2hanjisei
[cm]
「お～。詳しいですね。さすが[emb exp=f.test]さまですね。」[l][r]
「そうです。完全反磁性こそが魅力的な現象なのです。」[l][r]

[jump storage=first.ks target=*jisoku]

[s]

*jisoku
[cm]
「超伝導体は試料内部への磁束の侵入を許しません。これを完全反磁性を言います。」[l][r]

!?[l][r]
[quake count=10 time=300 hmax=20]
「え～現在地震が起きております。結構強いです。」[l][r]
--平然と授業を続ける指導教官[l][r]
「しかし、周囲の磁場が強すぎると磁束が侵入し始めます。」[l][r]
「でも、普通に入っていくわけではなくて、1本、2本...と量子化されて侵入します。これを磁束の量子化といいます。」[l][r]
;[image layer="1" x="150" y="150" storage="JIsoku.jpg"]
「ま、座学はこれくらいにして実験室に行きましょうか。」[l][r]
[jump storage=first.ks target=*path]

[s]

*path
[bg storage=path.JPG time=500]
[cm]
[quake count=1 time=2000 vmax=10]
「研究室には慣れてきましたか？」[l][r]
[link target=*tag_pathyes] →はい。 [endlink][r]
[link target=*tag_book] →やめたいです。家に帰ります。 [endlink][r]

[s]

*tag_pathyes
[cm]
「お！うれしいですね！」[l][r]
「私も[emb exp=f.test]さまと研究ができて幸せです。」[l][r]
--照れた様子の指導教官[l][r]
「趣味とかありますか？」[l][r]

[edit name="syumi1" top=600 left=260]

[locate x=500 y=600]
[button graphic="/image/config/arrow_next.png" target=*syumi]

[s]

*syumi
[commit name="syumi1"]
[cm]
;入力されたテキストの内容を表示する
「[emb exp=syumi1]ですか!?現代風な趣味ですね。」[l][r]
「私は若いころは油絵を描いておりまして、今は、ヲタクと呼ばれる人間になっています。」[l][r]
「今度その[emb exp=syumi1]について詳しくお聞きしたいものですな。」[l][r]
[jump storage=first.ks target=*synth]

[s]

*synth
[bg storage=lab.jpg time=500]
[cm]
--実験室に到着[r]
「合成する物質を決めましょう。」[r]
[cm]
[link target=*tag_tantai] →Pb [endlink][r]
[link target=*tag_tantai] →Zn [endlink][r]
[link target=*tag_tantai] →Ti [endlink][r]
[link target=*tag_tantai] →W [endlink][r]
[link target=*tag_Fe] →Fe [endlink][r]

[s]

*tag_tantai
[cm]
「それは単体で超伝導を示すことが知られているから、他のにした方がおもしろいんじゃないかな？」[l][r]
[cm]
[link target=*tag_tantai] →Pb [endlink][r]
[link target=*tag_tantai] →Zn [endlink][r]
[link target=*tag_tantai] →Ti [endlink][r]
[link target=*tag_tantai] →W [endlink][r]
[link target=*tag_Fe] →Fe [endlink][r]

[s]

*tag_Fe
[cm]
「鉄ですか。なかなかユニークな発想ですな。」[l][r]
「とりあえず作って、測りましょう。」[l][r]
[cm]
LaFeAsを合成した。[l][r]
「ん～よくわからない物質だなあ。」[l][r]
「非磁性ではあるみたいだ。」[l][r]
「抵抗でも測ってみましょうか。」[l][r]
[link target=*tag_success] →とりあえず冷やしてみる。 [endlink][r]
[link target=*tag_book] →よくわからないので家に帰る。 [endlink][r]
[s]




*tag_success
[bg storage=run.jpg time=500]
[cm]
4 Kに到達[l][r]
...[l][r]
...[l][r]
なんと電気抵抗が突然0になった！[l][r]
初の鉄系超伝導体の発見である！[l][r]
これは「予想外の結果(=発見)」(https://www.st.keio.ac.jp/departments/ob_relay/ob_0902.html)だ！[l][r]
「作って、測る」[l][r]
最も大事な精神である。[l][r]
【 GOD END 】[l][cm]
[jump target=*start]

*tag_book

[bg storage=sleep.jpg time=500]
[cm]
結局眠るだけであった。[l][r]
書斎に閉じこもっていては何も生み出せない。[l][r]
塾員来往第62回を読め。[r]
https://www.st.keio.ac.jp/departments/ob_relay/ob_0902.html

【 BAD END 】[l][cm]

[jump target=*start]
