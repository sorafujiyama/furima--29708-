const pay = ()=> {
  Payjp.setPublicKey("pk_test_3c9a1117a76996c5233eb94b");
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const forResult = document.getElementById("charge-form");
    const formData = new FormData(forResult);

    const card = {
      number: formData.get("number"),
      exp_month: formData.get("exp_month"),
      exp_year: `20${formData.get("exp_year")}`,
      cvc: formData.get("cvc"),
    };

    Payjp.createToken(card, (status, response) => {

    });
  });
};

window.addEventListener("load", pay);