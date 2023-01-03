.class public final Lf/d/a/o/p/g/h;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final a:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Lf/d/a/o/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lf/d/a/o/b;->c:Lf/d/a/o/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/g/h;->a:Lf/d/a/o/g;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/g/h;->b:Lf/d/a/o/g;

    return-void
.end method
