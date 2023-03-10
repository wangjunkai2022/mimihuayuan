.class public Ll/e0$a;
.super Li/g0;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Li/g0;

.field public final c:Li/z;


# direct methods
.method public constructor <init>(Li/g0;Li/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/g0;-><init>()V

    .line 2
    iput-object p1, p0, Ll/e0$a;->b:Li/g0;

    .line 3
    iput-object p2, p0, Ll/e0$a;->c:Li/z;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/e0$a;->b:Li/g0;

    invoke-virtual {v0}, Li/g0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/e0$a;->c:Li/z;

    return-object v0
.end method

.method public e(Lj/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/e0$a;->b:Li/g0;

    invoke-virtual {v0, p1}, Li/g0;->e(Lj/i;)V

    return-void
.end method
