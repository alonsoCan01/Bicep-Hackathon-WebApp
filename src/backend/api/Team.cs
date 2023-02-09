using api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api
{
    public class Team
    {

        public string teamName { get; }

       public List<TeamMember> teamMembers { get;  }


        public Team()
        {
            teamName = "Team very creative name";

            teamMembers = new List<TeamMember>();

            teamMembers.Add(new TeamMember("David", "I'm going to be a few minutes late to the meeting"));
            teamMembers.Add(new TeamMember("Alonso", "Thats fine im setting up"));
            teamMembers.Add(new TeamMember("Colin", "If you aint first your last"));

        }

    }
}
