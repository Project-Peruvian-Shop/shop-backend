export interface GlobalResponse<T> {
  ok: boolean;
  message: string;
  data: T;
  timestamp: string;
  details: string | null;
}

export interface PaginatedResponse<T> {
  content: T[];
  totalPages: number;
  totalElements: number;
  number: number;
  size: number;
  first: boolean;
  last: boolean;
}
