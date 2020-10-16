using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace randomart
{
   public class Service1 : IService1
    {
        public Double[] transform(int id)
        {
            Random random = new Random();
            Double[] returns = new Double[6];
            returns[0] = Math.Floor(random.NextDouble() * 300);
            returns[1] = Math.Floor(random.NextDouble() * 300);
            returns[2] = Math.Floor(random.NextDouble() * id);
            returns[3] = Math.Floor(random.NextDouble() * 255);
            returns[4] = Math.Floor(random.NextDouble() * 255);
            returns[5] = Math.Floor(random.NextDouble() * 255);
            return returns;
        }
    }
}
