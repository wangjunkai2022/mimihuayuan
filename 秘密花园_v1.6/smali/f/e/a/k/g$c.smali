.class public Lf/e/a/k/g$c;
.super Ljava/lang/Object;
.source "RealmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/a/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Lf/e/a/k/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf/e/a/k/g;

    .line 2
    sget-object v1, Lf/e/a/k/g;->a:Lg/a/x;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lf/e/a/k/g;-><init>(Lg/a/x;Lf/e/a/k/g$a;)V

    sput-object v0, Lf/e/a/k/g$c;->a:Lf/e/a/k/g;

    return-void
.end method
