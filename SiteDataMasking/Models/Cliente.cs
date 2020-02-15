namespace SiteDataMasking.Models
{
    public class Cliente
    {
        public int IdCliente { get; set; }
        public string NomeCliente { get; set; }
        public string Email { get; set; }
        public decimal LimiteCredito { get; set; }
        public string NumeroCartao { get; set; }
        public string CodSeguranca { get; set; }
    }
}