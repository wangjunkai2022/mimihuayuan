.class public final enum Lk/a/e/f$a$a;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/e/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/e/f$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk/a/e/f$a$a;

.field public static final enum b:Lk/a/e/f$a$a;

.field public static final synthetic c:[Lk/a/e/f$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/a/e/f$a$a;

    const-string v1, "html"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/a/e/f$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    new-instance v0, Lk/a/e/f$a$a;

    const-string v1, "xml"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk/a/e/f$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/e/f$a$a;->b:Lk/a/e/f$a$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lk/a/e/f$a$a;

    sget-object v4, Lk/a/e/f$a$a;->a:Lk/a/e/f$a$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lk/a/e/f$a$a;->c:[Lk/a/e/f$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/e/f$a$a;
    .locals 1

    .line 1
    const-class v0, Lk/a/e/f$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/e/f$a$a;

    return-object p0
.end method

.method public static values()[Lk/a/e/f$a$a;
    .locals 1

    .line 1
    sget-object v0, Lk/a/e/f$a$a;->c:[Lk/a/e/f$a$a;

    invoke-virtual {v0}, [Lk/a/e/f$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/e/f$a$a;

    return-object v0
.end method
