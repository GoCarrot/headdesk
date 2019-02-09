.class public final Lcom/upsight/android/googlepushservices/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

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

    .line 256
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/upsight/android/googlepushservices/R$styleable;->AdsAttrs:[I

    .line 260
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/upsight/android/googlepushservices/R$styleable;->FontFamily:[I

    .line 261
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/upsight/android/googlepushservices/R$styleable;->FontFamilyFont:[I

    .line 271
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/upsight/android/googlepushservices/R$styleable;->LoadingImageView:[I

    .line 275
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/upsight/android/googlepushservices/R$styleable;->SignInButton:[I

    return-void

    .line 256
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    .line 260
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data

    .line 261
    :array_2
    .array-data 4
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 271
    :array_3
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data

    .line 275
    :array_4
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
