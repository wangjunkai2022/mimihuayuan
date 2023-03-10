.class public final enum Lm/o/a/a;
.super Ljava/lang/Enum;
.source "EmptyObservableHolder.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/o/a/a;",
        ">;",
        "Lm/e$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm/o/a/a;

.field public static final b:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic c:[Lm/o/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm/o/a/a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/o/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/o/a/a;->a:Lm/o/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lm/o/a/a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lm/o/a/a;->c:[Lm/o/a/a;

    .line 3
    invoke-static {v0}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object v0

    sput-object v0, Lm/o/a/a;->b:Lm/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm/o/a/a;
    .locals 1

    .line 1
    const-class v0, Lm/o/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/o/a/a;

    return-object p0
.end method

.method public static values()[Lm/o/a/a;
    .locals 1

    .line 1
    sget-object v0, Lm/o/a/a;->c:[Lm/o/a/a;

    invoke-virtual {v0}, [Lm/o/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/o/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lm/j;

    .line 2
    invoke-virtual {p1}, Lm/j;->d()V

    return-void
.end method
