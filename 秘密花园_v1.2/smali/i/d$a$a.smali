.class public final Li/d$a$a;
.super Lj/m;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/d$a;-><init>(Li/m0/c/e$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li/d$a;


# direct methods
.method public constructor <init>(Li/d$a;Lj/a0;Lj/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a0;",
            "Lj/a0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/d$a$a;->b:Li/d$a;

    invoke-direct {p0, p3}, Lj/m;-><init>(Lj/a0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/d$a$a;->b:Li/d$a;

    .line 2
    iget-object v0, v0, Li/d$a;->d:Li/m0/c/e$c;

    .line 3
    invoke-virtual {v0}, Li/m0/c/e$c;->close()V

    .line 4
    iget-object v0, p0, Lj/m;->a:Lj/a0;

    invoke-interface {v0}, Lj/a0;->close()V

    return-void
.end method
