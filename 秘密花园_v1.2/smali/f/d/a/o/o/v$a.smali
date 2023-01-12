.class public Lf/d/a/o/o/v$a;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lf/d/a/o/o/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/o/v$a;

    invoke-direct {v0}, Lf/d/a/o/o/v$a;-><init>()V

    sput-object v0, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lf/d/a/o/o/v;->a:Lf/d/a/o/o/v;

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
