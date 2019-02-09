.class public final Lio/teak/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x1

.field public static final FontFamilyFont_fontStyle:I = 0x0

.field public static final FontFamilyFont_fontWeight:I = 0x2

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 212
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/teak/sdk/R$styleable;->FontFamily:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lio/teak/sdk/R$styleable;->FontFamilyFont:[I

    .line 223
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lio/teak/sdk/R$styleable;->LoadingImageView:[I

    .line 227
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lio/teak/sdk/R$styleable;->SignInButton:[I

    return-void

    .line 212
    nop

    :array_0
    .array-data 4
        0x7f0100c0
        0x7f0100c1
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
    .end array-data

    .line 213
    :array_1
    .array-data 4
        0x7f0100c6
        0x7f0100c7
        0x7f0100c8
    .end array-data

    .line 223
    :array_2
    .array-data 4
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
    .end array-data

    .line 227
    :array_3
    .array-data 4
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
