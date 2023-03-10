.class public final Li/m0/e/h;
.super Li/i0;
.source "RealResponseBody.kt"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lj/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLj/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/i0;-><init>()V

    iput-object p1, p0, Li/m0/e/h;->c:Ljava/lang/String;

    iput-wide p2, p0, Li/m0/e/h;->d:J

    iput-object p4, p0, Li/m0/e/h;->e:Lj/j;

    return-void
.end method


# virtual methods
.method public E()Li/z;
    .locals 2

    .line 1
    iget-object v0, p0, Li/m0/e/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Li/z;->f:Li/z$a;

    invoke-static {v0}, Li/z$a;->b(Ljava/lang/String;)Li/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public G()Lj/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/e/h;->e:Lj/j;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/m0/e/h;->d:J

    return-wide v0
.end method
