.class public interface abstract Lf/d/a/o/o/h;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lf/d/a/o/o/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/o/o/j$a;

    invoke-direct {v0}, Lf/d/a/o/o/j$a;-><init>()V

    .line 2
    new-instance v1, Lf/d/a/o/o/j;

    iget-object v0, v0, Lf/d/a/o/o/j$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Lf/d/a/o/o/j;-><init>(Ljava/util/Map;)V

    .line 3
    sput-object v1, Lf/d/a/o/o/h;->a:Lf/d/a/o/o/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
