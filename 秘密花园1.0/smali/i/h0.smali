.class public final Li/h0;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/h0$a;
    }
.end annotation


# instance fields
.field public a:Li/e;

.field public final b:Li/e0;

.field public final c:Li/c0;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Li/v;

.field public final g:Li/w;

.field public final h:Li/i0;

.field public final i:Li/h0;

.field public final j:Li/h0;

.field public final k:Li/h0;

.field public final l:J

.field public final m:J

.field public final n:Li/m0/d/c;


# direct methods
.method public constructor <init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    if-eqz v4, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Li/h0;->b:Li/e0;

    iput-object v2, v0, Li/h0;->c:Li/c0;

    iput-object v3, v0, Li/h0;->d:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Li/h0;->e:I

    move-object v1, p5

    iput-object v1, v0, Li/h0;->f:Li/v;

    iput-object v4, v0, Li/h0;->g:Li/w;

    move-object v1, p7

    iput-object v1, v0, Li/h0;->h:Li/i0;

    move-object v1, p8

    iput-object v1, v0, Li/h0;->i:Li/h0;

    move-object v1, p9

    iput-object v1, v0, Li/h0;->j:Li/h0;

    move-object/from16 v1, p10

    iput-object v1, v0, Li/h0;->k:Li/h0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Li/h0;->l:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Li/h0;->m:J

    move-object/from16 v1, p15

    iput-object v1, v0, Li/h0;->n:Li/m0/d/c;

    return-void

    :cond_0
    const-string v1, "headers"

    .line 2
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v1, "message"

    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-string v1, "protocol"

    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    :cond_3
    const-string v1, "request"

    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5
.end method

.method public static f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p0, p0, Li/h0;->g:Li/w;

    invoke-virtual {p0, p1}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2

    :cond_1
    const-string p0, "name"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/h0;->h:Li/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/i0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Li/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li/h0;->a:Li/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Li/e;->n:Li/e$a;

    iget-object v1, p0, Li/h0;->g:Li/w;

    invoke-virtual {v0, v1}, Li/e$a;->b(Li/w;)Li/e;

    move-result-object v0

    .line 3
    iput-object v0, p0, Li/h0;->a:Li/e;

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget v0, p0, Li/h0;->e:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/h0;->c:Li/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/h0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/h0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/h0;->b:Li/e0;

    .line 2
    iget-object v1, v1, Li/e0;->b:Li/x;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
