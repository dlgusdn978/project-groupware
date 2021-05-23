package com.mju.groupware.dao;

import java.util.List;

import com.mju.groupware.dto.Class;
import com.mju.groupware.dto.Team;
import com.mju.groupware.dto.TeamUser;
import com.mju.groupware.dto.User;

public interface TeamDao {

	public void InsertTeamInfo(Team team);

	public int SelectClassID(Class classInfo);

	public int SelectUserIDForTeamUser(User user);

	public void InsertTeamUserInfo(TeamUser teamUser);

	public List<Class> SelectLectureInfo(String lectureName);

	public int SelectTeamLeaderUserID(String name);

	public List<Team> SelectTeamList();

	public Class SelectClassList(int classID);

	public int SelectClassIDForCheckTeam(int teamID);

	public List<Class> SelectClassInfoForCheckTeam(int classID);

	public String SelectTeamName(int teamID);

	public List<TeamUser> SelectTeamMemberInfo(int teamID);

	public String SelectLeaderName(int userID);

	public String SelectLeaderLoginID(int userID);


}
