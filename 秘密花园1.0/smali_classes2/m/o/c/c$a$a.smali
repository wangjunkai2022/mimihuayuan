.class public Lm/o/c/c$a$a;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/o/c/c$a;->b(Lm/n/a;)Lm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm/n/a;

.field public final synthetic b:Lm/o/c/c$a;


# direct methods
.method public constructor <init>(Lm/o/c/c$a;Lm/n/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/c/c$a$a;->b:Lm/o/c/c$a;

    iput-object p2, p0, Lm/o/c/c$a$a;->a:Lm/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/c$a$a;->b:Lm/o/c/c$a;

    .line 2
    iget-object v0, v0, Lm/o/c/c$a;->c:Lm/o/d/g;

    .line 3
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/c/c$a$a;->a:Lm/n/a;

    invoke-interface {v0}, Lm/n/a;->call()V

    return-void
.end method
