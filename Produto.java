public class Produto {
    private String description;
    private Double price;
    private int amount;

    public Produto(String desc, Double preco, int quantidade){
        description = desc;
        price = preco;
        amount = quantidade;
    }

    public Produto(String desc){
        this(desc, 0.0, 0);
    }

    public void setDesc (String desc){
        description = desc;
    }

    public void setPrice (Double prc){
        price = prc;
    }

    public void setAmount (int am){
        amount = am;
    }

    public String getDesc (){
        return description;
    }

    public Double getPrice (){
        return price;
    }

    public int getAmount () {
        return amount;
    }
}