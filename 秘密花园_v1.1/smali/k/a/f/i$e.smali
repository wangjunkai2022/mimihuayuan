.class public final Lk/a/f/i$e;
.super Lk/a/f/i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/StringBuilder;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/StringBuilder;

.field public final e:Ljava/lang/StringBuilder;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lk/a/f/i;-><init>(Lk/a/f/i$a;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lk/a/f/i$e;->b:Ljava/lang/StringBuilder;

    .line 3
    iput-object v0, p0, Lk/a/f/i$e;->c:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lk/a/f/i$e;->d:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lk/a/f/i$e;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lk/a/f/i$e;->f:Z

    .line 7
    sget-object v0, Lk/a/f/i$j;->a:Lk/a/f/i$j;

    iput-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    return-void
.end method


# virtual methods
.method public g()Lk/a/f/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/i$e;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a/f/i$e;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lk/a/f/i$e;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v0, p0, Lk/a/f/i$e;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lk/a/f/i$e;->f:Z

    return-object p0
.end method
