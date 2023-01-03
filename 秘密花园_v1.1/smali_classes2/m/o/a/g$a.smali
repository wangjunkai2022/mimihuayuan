.class public final Lm/o/a/g$a;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lm/o/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/o/a/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm/o/a/g;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lm/o/a/g;-><init>(ZI)V

    sput-object v0, Lm/o/a/g$a;->a:Lm/o/a/g;

    return-void
.end method
