.class public final Lio/teak/sdk/wrapper/air/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/wrapper/air/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/wrapper/air/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 11
    const/4 v0, 0x1

    sput v0, Lio/teak/sdk/wrapper/air/b$a;->a:I

    .line 12
    sput v1, Lio/teak/sdk/wrapper/air/b$a;->b:I

    .line 10
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/teak/sdk/wrapper/air/b$a;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lio/teak/sdk/wrapper/air/b$a;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
