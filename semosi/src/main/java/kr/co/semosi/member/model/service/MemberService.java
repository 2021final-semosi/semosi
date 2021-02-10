package kr.co.semosi.member.model.service;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

public interface MemberService {

	public ParentMember selectLoginParent(ParentMember pm);
	public SitterMember selectLoginSitter(SitterMember sm);
}
