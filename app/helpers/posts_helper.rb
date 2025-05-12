module PostsHelper
  def generate_quiz(text)
    return "クイズを作成できませんでした" if text.blank?

    # 「とは」が含まれる行を探す
    line = text.lines.find { |l| l.include?("とは") }

    return "クイズを作成できませんでした" unless line

    front, _back = line.split("とは", 2)
    return "クイズを作成できませんでした" unless front

    # 語尾の句読点（。、．）や空白を除去して整形
    cleaned_front = front.strip.gsub(/[\s　]*[。、．]\z/, "")

    # やさしい問いかけ形式で返す
    "#{cleaned_front}とは何か、＿＿に入る言葉は？"
  end
end