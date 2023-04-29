import React, { useState } from "react";

const QuestionInput = () => {
  const [question, setQuestion] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();

    const response = await fetch("api/questions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ question }),
    });

    const data = await response.json();
    console.log(data);
  };

  return (
    <form onSubmit={handleSubmit}>
      <label htmlFor="questions">Ask your question:</label>
      <input
        type="text"
        id="question"
        value={question}
        onChange={(e) => setQuestion(e.target.value)}
      />
      <button type="submit">Submit</button>
    </form>
  );
};

export default QuestionInput;
