.class public Lf/g/a/f$a;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/g/a/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/g/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf/g/a/e;

.field public final synthetic e:Lf/g/a/f;


# direct methods
.method public constructor <init>(Lf/g/a/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/g/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/g/a/f$a;->e:Lf/g/a/f;

    iput-object p2, p0, Lf/g/a/f$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lf/g/a/f$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lf/g/a/f$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lf/g/a/f$a;->d:Lf/g/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/g/a/f$a;->e:Lf/g/a/f;

    iget-object v1, p0, Lf/g/a/f$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lf/g/a/f$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lf/g/a/f$a;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lf/g/a/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lf/g/a/f$a;->d:Lf/g/a/e;

    invoke-interface {v0}, Lf/g/a/e;->b()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lf/g/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lf/g/a/f$a;->d:Lf/g/a/e;

    invoke-interface {v1, v0}, Lf/g/a/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iget-object v1, p0, Lf/g/a/f$a;->d:Lf/g/a/e;

    invoke-interface {v1, v0}, Lf/g/a/e;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
