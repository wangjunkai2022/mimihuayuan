.class public Lf/e/a/j/b/g/b;
.super Ljava/lang/Object;
.source "AvboboApi.java"


# static fields
.field public static volatile e:Lf/e/a/j/b/g/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lc/a/a/b/g/h;->c1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/e/a/j/b/g/b;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v1, "VhQBCwkcZlscFUA="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "XxYXFBhJFhwASFYIFAMOAlYMUVRaRBdQHAs="

    .line 5
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "XxYXFBhJFhwASFUFGggADENTTQcEHg=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "XxYXFBhJFhwASFgIFwEBH0FMAAsG"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/String;

    const-string v7, "TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUFRUW0oMA0dfFktaGgIYRBUMFg9RAxFCVAdTTVxBFg=="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/String;

    const-string v4, "TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUVdXXUQLB0tQFktaGgIYRBUMFg9RAxFDVgRXSFpBFg=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v5

    new-instance v1, Ljava/lang/String;

    const-string v4, "TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUVJXW0QNA0RUFktaGgIYRBUMFg9RAxFDVgRXSFpBFg=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v2, v6

    .line 9
    aget-object v1, v2, v0

    iput-object v1, p0, Lf/e/a/j/b/g/b;->d:Ljava/lang/String;

    .line 10
    aget-object v0, v3, v0

    iput-object v0, p0, Lf/e/a/j/b/g/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized c()Lf/e/a/j/b/g/b;
    .locals 2

    const-class v0, Lf/e/a/j/b/g/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/e/a/j/b/g/b;->e:Lf/e/a/j/b/g/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/e/a/j/b/g/b;

    invoke-direct {v1}, Lf/e/a/j/b/g/b;-><init>()V

    sput-object v1, Lf/e/a/j/b/g/b;->e:Lf/e/a/j/b/g/b;

    .line 3
    :cond_0
    sget-object v1, Lf/e/a/j/b/g/b;->e:Lf/e/a/j/b/g/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UQcNSg8SU1oRBxlfGwdNCFgPTg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/e/a/j/b/g/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/e/a/j/b/g/b;->b:Ljava/lang/String;

    const-string v2, "GBFR"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
