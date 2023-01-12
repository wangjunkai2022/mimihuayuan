.class public final Ll/z;
.super Ll/l$a;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/z$a;
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Ll/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/z;

    invoke-direct {v0}, Ll/z;-><init>()V

    sput-object v0, Ll/z;->a:Ll/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/h0;)Ll/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/h0;",
            ")",
            "Ll/l<",
            "Li/i0;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-static {v0, p1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1, p2}, Ll/h0;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/l;

    move-result-object p1

    .line 6
    new-instance p2, Ll/z$a;

    invoke-direct {p2, p1}, Ll/z$a;-><init>(Ll/l;)V

    return-object p2
.end method
