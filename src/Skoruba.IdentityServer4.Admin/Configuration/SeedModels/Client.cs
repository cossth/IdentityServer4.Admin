﻿using System.Collections.Generic;

namespace Skoruba.IdentityServer4.Admin.Configuration.SeedModels
{
    public class Client : global::IdentityServer4.Models.Client
    {
        public List<Claim> ClientClaims { get; set; } = new List<Claim>();
    }
}