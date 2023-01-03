.class public final enum Lm/o/d/h;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lm/n/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/o/d/h;",
        ">;",
        "Lm/n/c<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm/o/d/h;

.field public static final synthetic b:[Lm/o/d/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm/o/d/h;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/o/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/o/d/h;->a:Lm/o/d/h;

    const/4 v1, 0x1

    new-array v1, v1, [Lm/o/d/h;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lm/o/d/h;->b:[Lm/o/d/h;

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

.method public static valueOf(Ljava/lang/String;)Lm/o/d/h;
    .locals 1

    .line 1
    const-class v0, Lm/o/d/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/o/d/h;

    return-object p0
.end method

.method public static values()[Lm/o/d/h;
    .locals 1

    .line 1
    sget-object v0, Lm/o/d/h;->b:[Lm/o/d/h;

    invoke-virtual {v0}, [Lm/o/d/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/o/d/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
