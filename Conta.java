public class Conta {
    private String numero;
    private Double saldo;

    public Conta(String numeroInicial){
        numero = numeroInicial;
        saldo = 0.0;
    }

    public String getNum (){
        return numero;
    }

    public Double getSaldo (){
        return saldo;
    }

    public void creditar (Double credito){
        saldo += credito;
    }

    public void debitas (Double debito){
        saldo -= debito;
    }

}