.class public interface abstract Lf/i/a/a/c1/c;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final a:Lf/i/a/a/c1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/c1/c$a;

    invoke-direct {v0}, Lf/i/a/a/c1/c$a;-><init>()V

    sput-object v0, Lf/i/a/a/c1/c;->a:Lf/i/a/a/c1/c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lf/i/a/a/c1/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation
.end method

.method public abstract b()Lf/i/a/a/c1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation
.end method
