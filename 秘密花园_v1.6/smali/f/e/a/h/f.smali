.class public Lf/e/a/h/f;
.super Ljava/lang/Object;
.source "M3U8InfoManger.java"


# static fields
.field public static c:Lf/e/a/h/f;


# instance fields
.field public a:Lf/e/a/h/h/d;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/e/a/h/f$a;

    invoke-direct {v0, p0}, Lf/e/a/h/f$a;-><init>(Lf/e/a/h/f;)V

    iput-object v0, p0, Lf/e/a/h/f;->b:Landroid/os/Handler;

    return-void
.end method
