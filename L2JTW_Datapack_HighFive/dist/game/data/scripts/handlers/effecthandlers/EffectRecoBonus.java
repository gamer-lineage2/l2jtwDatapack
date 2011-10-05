package handlers.effecthandlers;

import com.l2jserver.gameserver.model.L2Effect;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.skills.Env;
import com.l2jserver.gameserver.templates.effects.EffectTemplate;
import com.l2jserver.gameserver.templates.skills.L2EffectType;


/**
 * 
 * @author JaJa
 *
 */

public class EffectRecoBonus extends L2Effect {
        
        public EffectRecoBonus(Env env, EffectTemplate template)
        {
                super(env, template);
        }

        /**
         * 
         * @see l2.brick.gameserver.model.L2Effect#getEffectType()
         */
        @Override
        public L2EffectType getEffectType()
        {
                return L2EffectType.BUFF;
        }
        
        /**
         * 
         * @see l2.brick.gameserver.model.L2Effect#onStart()
         */
        @Override
        public boolean onStart()
        {
                if (!(getEffected() instanceof L2PcInstance))
                        return false;
                
                ((L2PcInstance) getEffected()).setRecomBonusType(1).setRecoBonusActive(true);
                return true;
        }
        
        /**
         * 
         * @see l2.brick.gameserver.model.L2Effect#onExit()
         */
        @Override
        public void onExit()
        {
                ((L2PcInstance) getEffected()).setRecomBonusType(0).setRecoBonusActive(false);
        }
        
        @Override
        protected boolean effectCanBeStolen()
        {
                return false;
        }
        
        /**
         * 
         * @see l2.brick.gameserver.model.L2Effect#onActionTime()
         */
        @Override
        public boolean onActionTime()
        {
                return false;
        }       
        
}