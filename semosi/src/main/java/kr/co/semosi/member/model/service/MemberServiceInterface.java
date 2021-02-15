package kr.co.semosi.member.model.service;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

public interface MemberServiceInterface {

	public ParentMember selectLoginParent(ParentMember pm);
	public SitterMember selectLoginSitter(SitterMember sm);
}
