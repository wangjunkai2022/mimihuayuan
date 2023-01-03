.class public final Ll/y$b;
.super Li/i0;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Li/i0;

.field public final d:Lj/j;

.field public e:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Li/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/i0;-><init>()V

    .line 2
    iput-object p1, p0, Ll/y$b;->c:Li/i0;

    .line 3
    new-instance v0, Ll/y$b$a;

    invoke-virtual {p1}, Li/i0;->G()Lj/j;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ll/y$b$a;-><init>(Ll/y$b;Lj/a0;)V

    invoke-static {v0}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object p1

    iput-object p1, p0, Ll/y$b;->d:Lj/j;

    return-void
.end method


# virtual methods
.method public E()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y$b;->c:Li/i0;

    invoke-virtual {v0}, Li/i0;->E()Li/z;

    move-result-object v0

    return-object v0
.end method

.method public G()Lj/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y$b;->d:Lj/j;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y$b;->c:Li/i0;

    invoke-virtual {v0}, Li/i0;->close()V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll/y$b;->c:Li/i0;

    invoke-virtual {v0}, Li/i0;->g()J

    move-result-wide v0

    return-wide v0
.end method
