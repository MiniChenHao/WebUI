using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class SysMenuModel : BaseModel<SysMenuModel>
    {
        public int ID { get; set; }

        public string Name { get; set; }
    }
}
