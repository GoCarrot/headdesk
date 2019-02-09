.class public final Lio/teak/app/unity/dev/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/app/unity/dev/R;
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

    .line 484
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/teak/app/unity/dev/R$styleable;->FontFamily:[I

    .line 593
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lio/teak/app/unity/dev/R$styleable;->FontFamilyFont:[I

    .line 651
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lio/teak/app/unity/dev/R$styleable;->LoadingImageView:[I

    .line 714
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lio/teak/app/unity/dev/R$styleable;->SignInButton:[I

    return-void

    .line 484
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    .line 593
    :array_1
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data

    .line 651
    :array_2
    .array-data 4
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 714
    :array_3
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
