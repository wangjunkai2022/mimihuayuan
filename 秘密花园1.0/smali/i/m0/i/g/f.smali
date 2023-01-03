.class public final Li/m0/i/g/f;
.super Li/m0/i/g/a;
.source "StandardAndroidSocketAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/i/g/f$a;
    }
.end annotation


# static fields
.field public static final f:Li/m0/i/g/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/m0/i/g/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/m0/i/g/f$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/m0/i/g/f;->f:Li/m0/i/g/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/m0/i/g/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method
