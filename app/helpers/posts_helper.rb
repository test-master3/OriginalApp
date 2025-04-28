module PostsHelper
  def generate_quiz(text)
    if text.present? && text.include?("とは")
      front, _back = text.split("とは", 2)
      "#{front}とは＿＿である。"
    else
      "クイズを作成できませんでした"
    end
  end
end