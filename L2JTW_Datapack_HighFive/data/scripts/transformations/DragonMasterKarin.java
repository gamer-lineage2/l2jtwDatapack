package transformations;

import com.l2jserver.gameserver.datatables.SkillTable;
import com.l2jserver.gameserver.instancemanager.TransformationManager;
import com.l2jserver.gameserver.model.L2Transformation;

public class DragonMasterKarin extends L2Transformation
{
	private static final int[] SKILLS = {619};
	public DragonMasterKarin()
	{
		// id, colRadius, colHeight
		super(20006, 8, 18.6);
	}
	
	@Override
	public void onTransform()
	{
		if (getPlayer().getTransformationId() != 20006 || getPlayer().isCursedWeaponEquipped())
			return;
		
		transformedSkills();
	}
	
	public void transformedSkills()
	{
		// Transform Dispel
		getPlayer().addSkill(SkillTable.getInstance().getInfo(619, 1), false);
		getPlayer().addSkill(SkillTable.getInstance().getInfo(20003, 1), false);
		getPlayer().addSkill(SkillTable.getInstance().getInfo(20004, 1), false);
		getPlayer().addSkill(SkillTable.getInstance().getInfo(20005, 1), false);
		
		getPlayer().setTransformAllowedSkills(SKILLS);
	}
	
	@Override
	public void onUntransform()
	{
		removeSkills();
	}
	
	public void removeSkills()
	{
		// Transform Dispel
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(619, 1), false);
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(20003, 1), false);
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(20004, 1), false);
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(20005, 1), false);
		
		getPlayer().setTransformAllowedSkills(EMPTY_ARRAY);
	}
	
	public static void main(String[] args)
	{
		TransformationManager.getInstance().registerTransformation(new DragonMasterKarin());
	}
}
