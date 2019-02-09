.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
.super Ljava/lang/Object;
.source "UpsightEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    }
.end annotation


# static fields
.field private static final CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field private static final CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final CONTENT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field static final HTTP_HEADER_REF_ID:Ljava/lang/String; = "X-US-Ref-Id"

.field static final HTTP_HEADER_US_DIGEST:Ljava/lang/String; = "X-US-DIGEST"

.field public static final LOG_TEXT_POSTING:Ljava/lang/String; = "POSTING:       "

.field public static final LOG_TEXT_RECEIVING:Ljava/lang/String; = "RECEIVING:     "

.field public static final LOG_TEXT_REQUEST_BODY:Ljava/lang/String; = "\nREQUEST BODY:  "

.field public static final LOG_TEXT_REQUEST_BODY_LENGTH:Ljava/lang/String; = "\nLENGTH:        "

.field public static final LOG_TEXT_REQUEST_BODY_LENGTH_COMPRESSED:Ljava/lang/String; = " (%d byte compressed)"

.field public static final LOG_TEXT_REQUEST_BODY_LENGTH_UNIT:Ljava/lang/String; = " byte"

.field public static final LOG_TEXT_RESPONSE_BODY:Ljava/lang/String; = "\nRESPONSE BODY: "

.field public static final LOG_TEXT_RESPONSE_BODY_NONE:Ljava/lang/String; = "[NONE]"

.field public static final LOG_TEXT_STATUS_CODE:Ljava/lang/String; = "\nSTATUS CODE:   "

.field public static final LOG_TEXT_TO:Ljava/lang/String; = "\nTO:            "

.field private static final POST_METHOD_NAME:Ljava/lang/String; = "POST"

.field public static final SIGNED_MESSAGE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final USER_AGENT_ANDROID:Ljava/lang/String;

.field private static final USE_GZIP:Z


# instance fields
.field private mEndpointAddress:Ljava/lang/String;

.field private mGson:Lcom/google/gson/Gson;

.field private mJsonParser:Lcom/google/gson/JsonParser;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mRequestLoggingGson:Lcom/google/gson/Gson;

.field private mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->USER_AGENT_ANDROID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/google/gson/Gson;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 0
    .param p1, "endpointAddress"    # Ljava/lang/String;
    .param p2, "signatureVerifier"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .param p4, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p5, "requestLoggingGson"    # Lcom/google/gson/Gson;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    .line 172
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mGson:Lcom/google/gson/Gson;

    .line 173
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 174
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mRequestLoggingGson:Lcom/google/gson/Gson;

    .line 175
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 176
    return-void
.end method

.method private getRequestBodyBytes(Ljava/lang/String;Z)[B
    .locals 1
    .param p1, "requestBody"    # Ljava/lang/String;
    .param p2, "useGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/upsight/android/internal/util/GzipHelper;->compress(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private getVerifiedResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 13
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const-string v3, ""

    .line 298
    .local v3, "respBody":Ljava/lang/String;
    const-string v9, "X-US-Ref-Id"

    invoke-virtual {p1, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "refId":Ljava/lang/String;
    const-string v9, "X-US-DIGEST"

    invoke-virtual {p1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "signature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 301
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 302
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 303
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "unverifiedRespBody":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    .line 308
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 309
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "signedMessage":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 315
    .local v6, "signedBytes":[B
    const/16 v9, 0x8

    :try_start_0
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 318
    .local v5, "signatureBytes":[B
    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mSignatureVerifier:Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    invoke-interface {v9, v6, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;->verify([B[B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 320
    move-object v3, v8

    .line 330
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v5    # "signatureBytes":[B
    .end local v6    # "signedBytes":[B
    .end local v7    # "signedMessage":Ljava/lang/String;
    .end local v8    # "unverifiedRespBody":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 322
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v6    # "signedBytes":[B
    .restart local v7    # "signedMessage":Ljava/lang/String;
    .restart local v8    # "unverifiedRespBody":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v10, "Upsight"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message signature is not valid Base64. X-US-DIGEST: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v0, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public send(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .locals 17
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "refId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 190
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mGson:Lcom/google/gson/Gson;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "requestBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mRequestLoggingGson:Lcom/google/gson/Gson;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "logRequestBody":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->getRequestBodyBytes(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 195
    .local v1, "body":[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "POSTING:       "

    .line 196
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 197
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nTO:            "

    .line 198
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    .line 199
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nLENGTH:        "

    .line 200
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " byte"

    .line 202
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 203
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    array-length v13, v1

    if-eq v12, v13, :cond_0

    .line 204
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, " (%d byte compressed)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    array-length v0, v1

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    const-string v12, "\nREQUEST BODY:  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 207
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v13, "Upsight"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mEndpointAddress:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 212
    const-string v12, "POST"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 214
    const-string v12, "X-US-Ref-Id"

    invoke-virtual {v10, v12, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v12, "Content-Type"

    const-string v13, "application/json"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v12, "User-Agent"

    sget-object v13, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->USER_AGENT_ANDROID:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v12, "Connection"

    const-string v13, "close"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 223
    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 225
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 226
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 227
    array-length v12, v1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 229
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-static {v1, v12}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/OutputStream;)V

    .line 231
    const-string v6, ""

    .line 232
    .local v6, "respBody":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 234
    .local v9, "statusCode":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RECEIVING:     "

    .line 235
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nSTATUS CODE:   "

    .line 237
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 238
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 240
    const/16 v12, 0xc8

    if-ne v9, v12, :cond_1

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->getVerifiedResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "verifiedRespBody":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_4

    .line 245
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v12, v11}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 248
    .local v7, "respJsonElem":Lcom/google/gson/JsonElement;
    const-string v12, "\nRESPONSE BODY: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mRequestLoggingGson:Lcom/google/gson/Gson;

    invoke-virtual {v13, v7}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    move-object v6, v11

    .line 265
    .end local v7    # "respJsonElem":Lcom/google/gson/JsonElement;
    .end local v11    # "verifiedRespBody":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v13, "Upsight"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v12, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;

    invoke-direct {v12, v9, v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    if-eqz v10, :cond_2

    .line 270
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    :cond_2
    return-object v12

    .line 252
    .restart local v11    # "verifiedRespBody":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v13, "Upsight"

    const-string v14, "Dropped message response containing invalid Json"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const-string v12, "\nRESPONSE BODY: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "[NONE]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 269
    .end local v1    # "body":[B
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v3    # "logRequestBody":Ljava/lang/String;
    .end local v5    # "requestBody":Ljava/lang/String;
    .end local v6    # "respBody":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "statusCode":I
    .end local v11    # "verifiedRespBody":Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz v10, :cond_3

    .line 270
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v12

    .line 260
    .restart local v1    # "body":[B
    .restart local v3    # "logRequestBody":Ljava/lang/String;
    .restart local v5    # "requestBody":Ljava/lang/String;
    .restart local v6    # "respBody":Ljava/lang/String;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "statusCode":I
    .restart local v11    # "verifiedRespBody":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v12, "\nRESPONSE BODY: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "[NONE]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
