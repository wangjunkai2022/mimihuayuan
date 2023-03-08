.class public final Lf/d/a/o/n/i$b;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lf/d/a/o/n/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/j$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/a;

.field public final synthetic b:Lf/d/a/o/n/i;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/i;Lf/d/a/o/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/i$b;->b:Lf/d/a/o/n/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/d/a/o/n/i$b;->a:Lf/d/a/o/a;

    return-void
.end method
