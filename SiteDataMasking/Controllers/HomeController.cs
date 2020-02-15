using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Dapper;
using SiteDataMasking.Models;

namespace SiteDataMasking.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index(
            [FromServices]IConfiguration config)
        {
            List<Cliente> clientes;

            using (SqlConnection conexao =
                new SqlConnection(
                    config.GetConnectionString("BaseClientes")))
            {
                clientes = conexao.Query<Cliente>(
                    "SELECT * " +
                    "FROM dbo.Clientes").AsList();
            }

            return View(clientes);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
