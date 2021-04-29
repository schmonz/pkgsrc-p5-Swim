# $NetBSD: Makefile,v 1.18 2020/08/31 18:11:57 wiz Exp $

DISTNAME=		Swim-0.1.48
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		textproc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/I/IN/INGY/}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		https://metacpan.org/release/Swim
COMMENT=		Plain text markup language that converts to many formats
LICENSE=		${PERL5_LICENSE}

DEPENDS+=		p5-HTML-Escape-[0-9]*:../../www/p5-HTML-Escape
DEPENDS+=		p5-Hash-Merge-[0-9]*:../../devel/p5-Hash-Merge
DEPENDS+=		p5-Pegex>=0.41:../../devel/p5-Pegex
DEPENDS+=		p5-Text-Autoformat-[0-9]*:../../textproc/p5-Text-Autoformat
DEPENDS+=		p5-YAML-LibYAML-[0-9]*:../../textproc/p5-YAML-LibYAML

PERL5_PACKLIST=		auto/Swim/.packlist
REPLACE_PERL+=		bin/swim

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
