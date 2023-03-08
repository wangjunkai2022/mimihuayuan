.class public final Li/d$a;
.super Li/i0;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lj/j;

.field public final d:Li/m0/c/e$c;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li/m0/c/e$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/i0;-><init>()V

    iput-object p1, p0, Li/d$a;->d:Li/m0/c/e$c;

    iput-object p2, p0, Li/d$a;->e:Ljava/lang/String;

    iput-object p3, p0, Li/d$a;->f:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2
    iget-object p1, p1, Li/m0/c/e$c;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a0;

    .line 3
    new-instance p2, Li/d$a$a;

    invoke-direct {p2, p0, p1, p1}, Li/d$a$a;-><init>(Li/d$a;Lj/a0;Lj/a0;)V

    .line 4
    invoke-static {p2}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object p1

    iput-object p1, p0, Li/d$a;->c:Lj/j;

    return-void
.end method


# virtual methods
.method public E()Li/z;
    .locals 2

    .line 1
    iget-object v0, p0, Li/d$a;->e:Ljava/lang/String;

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
    iget-object v0, p0, Li/d$a;->c:Lj/j;

    return-object v0
.end method

.method public g()J
    .locals 3

    .line 1
    iget-object v0, p0, Li/d$a;->f:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Li/m0/b;->F(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method
