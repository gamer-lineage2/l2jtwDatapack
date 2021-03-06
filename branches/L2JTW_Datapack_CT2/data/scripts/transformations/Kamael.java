package transformations;

import net.sf.l2j.gameserver.datatables.SkillTable;
import net.sf.l2j.gameserver.instancemanager.TransformationManager;
import net.sf.l2j.gameserver.model.L2Transformation;

public class Kamael extends L2Transformation
{
	public Kamael()
	{
		// id, duration (secs), colRadius, colHeight
		super(251, 10, 32.76);
	}

	public void onTransform()
	{
		if (getPlayer().getTransformationId() != 251 || getPlayer().isCursedWeaponEquipped())
			return;

		transformedSkills();
	}

	public void transformedSkills()
	{
		// Nail Attack
		getPlayer().addSkill(SkillTable.getInstance().getInfo(539, 1), false);
		// Wing Assault
		getPlayer().addSkill(SkillTable.getInstance().getInfo(540, 1), false);
		// Soul Sucking
		getPlayer().addSkill(SkillTable.getInstance().getInfo(1471, 1), false);
		// Death Beam
		getPlayer().addSkill(SkillTable.getInstance().getInfo(1472, 1), false);
		// Decrease Bow/Crossbow Attack Speed
		getPlayer().addSkill(SkillTable.getInstance().getInfo(5491, 1), false);
		// Transfrom Dispel
		getPlayer().addSkill(SkillTable.getInstance().getInfo(619, 1), false);

		getPlayer().setTransformAllowedSkills(new int[]{539,540,1471,1472,5491,619});
	}

	public void onUntransform()
	{
		removeSkills();
	}

	public void removeSkills()
	{
		// Nail Attack
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(539, 1), false);
		// Wing Assault
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(540, 1), false);
		// Soul Sucking
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(1471, 1), false);
		// Death Beam
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(1472, 1), false);
		// Decrease Bow/Crossbow Attack Speed
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(5491, 1), false);
		// Transfrom Dispel
		getPlayer().removeSkill(SkillTable.getInstance().getInfo(619, 1), false);

		getPlayer().setTransformAllowedSkills(new int[]{});
	}

	public static void main(String[] args)
	{
		TransformationManager.getInstance().registerTransformation(new Kamael());
	}
}
