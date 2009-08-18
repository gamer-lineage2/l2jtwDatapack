package transformations;

import net.sf.l2j.gameserver.datatables.SkillTable;
import net.sf.l2j.gameserver.instancemanager.TransformationManager;
import net.sf.l2j.gameserver.model.L2Transformation;

/**
 * Description: <br>
 * This will handle the transformation, giving the skills, and removing them, when the player logs out and is transformed these skills
 * do not save. 
 * 
 * @author Kerberos
 *
 */
public class AurabirdFalcon extends L2Transformation
{
	public AurabirdFalcon()
	{
		// id, colRadius, colHeight
		super(8, 38.0, 14.0);
	}

	public void onTransform()
	{
		if (getPlayer().getTransformationId() != 8 || getPlayer().isCursedWeaponEquipped())
			return;
		getPlayer().setIsFlyingMounted(true);
		// 	give transformation skills
		transformedSkills();
	}

	public void transformedSkills()
	{
		// Transfrom Dispel
		getPlayer().addSkill(SkillTable.getInstance().getInfo(619, 1), false);
		if (getPlayer().getLevel() >= 75)
			getPlayer().addSkill(SkillTable.getInstance().getInfo(885, 1), false);
			getPlayer().addSkill(SkillTable.getInstance().getInfo(894, 1), false);//Update by rocknow
			getPlayer().addSkill(SkillTable.getInstance().getInfo(932, 1), false);//Update by rocknow

		int lvl = getPlayer().getLevel() -74;
		if (lvl > 0)
		{
			getPlayer().addSkill(SkillTable.getInstance().getInfo(884, lvl), false);
			getPlayer().addSkill(SkillTable.getInstance().getInfo(886, lvl), false);
			getPlayer().addSkill(SkillTable.getInstance().getInfo(888, lvl), false);
			getPlayer().addSkill(SkillTable.getInstance().getInfo(890, lvl), false);//Update by rocknow
			getPlayer().addSkill(SkillTable.getInstance().getInfo(891, lvl), false);
			getPlayer().addSkill(SkillTable.getInstance().getInfo(911, lvl), false);
		}
		getPlayer().setTransformAllowedSkills(new int[]{619,884,885,886,888,890,891,894,911,932});
	}

	public void onUntransform()
	{
		getPlayer().setIsFlyingMounted(false);
		// remove transformation skills
		removeSkills();
	}

	public void removeSkills()
	{
		// Transfrom Dispel
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(619, 1), false);
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(885, 1), false);
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(894, 1), false);//Update by rocknow
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(932, 1), false);//Update by rocknow

		int lvl = getPlayer().getLevel() -74;
		if (lvl > 0)
		{
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(884, lvl), false);
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(886, lvl), false);
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(888, lvl), false);
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(890, lvl), false);//Update by rocknow
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(891, lvl), false);
			getPlayer().removeSkill(SkillTable.getInstance().getInfo(911, lvl), false);
		}
		getPlayer().setTransformAllowedSkills(new int[]{});
	}

	public static void main(String[] args)
	{
		TransformationManager.getInstance().registerTransformation(new AurabirdFalcon());
	}
}