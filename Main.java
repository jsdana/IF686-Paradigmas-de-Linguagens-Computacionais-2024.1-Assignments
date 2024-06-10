public class Main{
    
    public static void main (String[] args){
        Conta conta1 = new Conta("12345-67");

        System.out.println("Numero da conta: " + conta1.getNum());
        System.out.println("Saldo: " + conta1.getSaldo());

        conta1.creditar(150.00);
        System.out.println("Novo saldo: " + conta1.getSaldo());

        conta1.debitas(28.75);
        System.out.println("Novo saldo: " + conta1.getSaldo());

        Produto prod1 = new Produto("Maçã", 0.75, 10);

        System.out.println("Produto " + prod1.getDesc() + "; Preco: " + prod1.getPrice() + "; Quantidade: " + prod1.getAmount());

        Produto prod2 = new Produto("Laranja");

        System.out.println("Produto " + prod2.getDesc() + "; Preco: " + prod2.getPrice() + "; Quantidade: " + prod2.getAmount());
        
    }
}