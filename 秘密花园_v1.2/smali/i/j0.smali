.class public final Li/j0;
.super Li/i0;
.source "ResponseBody.kt"


# instance fields
.field public final synthetic c:Lj/j;

.field public final synthetic d:Li/z;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lj/j;Li/z;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/j0;->c:Lj/j;

    iput-object p2, p0, Li/j0;->d:Li/z;

    iput-wide p3, p0, Li/j0;->e:J

    invoke-direct {p0}, Li/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public E()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/j0;->d:Li/z;

    return-object v0
.end method

.method public G()Lj/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/j0;->c:Lj/j;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/j0;->e:J

    return-wide v0
.end method
